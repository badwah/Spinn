using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.Unity.InterceptionExtension;

namespace Spinn.Common
{
    public class InstrumantationLogging : ICallHandler
    {
        #region Implementation of ICallHandler

        public IMethodReturn Invoke(IMethodInvocation input, GetNextHandlerDelegate getNext)
        {
            // Declare any variables required for values used in this method here.


            // Perform any pre-processing tasks required in the custom handler here.
            // This code executes before control passes to the next handler.


            // Use the following line of code in any handler to invoke the next 
            // handler that the application block should execute. This code gets
            // the current return message that you must pass back to the caller:
            IMethodReturn msg = getNext()(input, getNext);

            // Perform any post-processing tasks required in the custom handler here.
            // This code executes after the invocation of the target object method or
            // property accessor, and before control passes back to the previous
            // handler as the Invoke call stack unwinds. You can modify the return 
            // message if required.


            // Return the message to the calling code, which may be the previous 
            // handler or, if this is the first handler in the chain, the client.   
            return msg;

        }

        public int Order { get; set; }

        #endregion
    }
}
