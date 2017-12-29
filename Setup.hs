import Distribution.Simple
import Distribution.Simple.Setup
import Distribution.Types.HookedBuildInfo
import Distribution.PackageDescription
import Distribution.Simple.LocalBuildInfo
import Data.List (dropWhile)
import Data.Traversable (forM)

main = defaultMainWithHooks simpleUserHooks { buildHook = myBuildHook }

defaultBuildHook = buildHook simpleUserHooks


{-
  gcc barfs on the option "-std=c++11" during the build step but it is required for an earlier step.
  Therefore we remove it here.
-}
myBuildHook :: PackageDescription -> LocalBuildInfo -> UserHooks -> BuildFlags -> IO ()
myBuildHook desc info hooks flags = do
  putStrLn "===="
  putStrLn $ show (componentNameMap info)
  defaultBuildHook newDesc info hooks flags
  where
    newDesc = fixDescription desc
    fixDescription desc = desc { executables = fmap fixExecutable (executables desc) }
    fixExecutable exec = exec { buildInfo = fixBuildInfo (buildInfo exec) }
    fixBuildInfo info = info { options = fixOptions (options info) }
    fixOptions options = fmap fixOption options
    fixOption (flavor, args) = (flavor, dropWhile ((==) "-optc-std=c++11") args)
