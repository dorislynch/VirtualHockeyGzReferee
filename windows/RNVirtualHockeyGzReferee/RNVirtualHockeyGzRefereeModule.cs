using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Virtual.Hockey.Gz.Referee.RNVirtualHockeyGzReferee
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNVirtualHockeyGzRefereeModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNVirtualHockeyGzRefereeModule"/>.
        /// </summary>
        internal RNVirtualHockeyGzRefereeModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNVirtualHockeyGzReferee";
            }
        }
    }
}
