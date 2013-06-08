// Guids.cs
// MUST match guids.h
using System;

namespace Company.VSPackage1
{
    static class GuidList
    {
        public const string guidVSPackage1PkgString = "9a0c56d7-bc5f-4fc1-83f4-c970fb31d9b7";
        public const string guidVSPackage1CmdSetString = "23efd5c4-2fa3-4bd4-9ee5-7959a0c0ca41";

        public static readonly Guid guidVSPackage1CmdSet = new Guid(guidVSPackage1CmdSetString);
    };
}