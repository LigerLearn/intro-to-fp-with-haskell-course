-- If we want to reuse functionality (types/functions)
-- which are defined in modules which are not in the Prelude
-- then we need to import it. Imports should

-- We import the module which contains the type.
import Data.Int

-- We use the type as needed.
x :: Int8
x = 12