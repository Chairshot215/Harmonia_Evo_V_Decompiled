.class public abstract Lorg/kxml2/wap/wv/WV;
.super Ljava/lang/Object;
.source "WV.java"


# static fields
.field public static final attrStartTable:[Ljava/lang/String;

.field public static final attrValueTable:[Ljava/lang/String;

.field public static final tagTablePage0:[Ljava/lang/String;

.field public static final tagTablePage1:[Ljava/lang/String;

.field public static final tagTablePage2:[Ljava/lang/String;

.field public static final tagTablePage3:[Ljava/lang/String;

.field public static final tagTablePage4:[Ljava/lang/String;

.field public static final tagTablePage5:[Ljava/lang/String;

.field public static final tagTablePage6:[Ljava/lang/String;

.field public static final tagTablePage7:[Ljava/lang/String;

.field public static final tagTablePage8:[Ljava/lang/String;

.field public static final tagTablePage9:[Ljava/lang/String;

.field public static final tagTablePageA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Acceptance"

    aput-object v1, v0, v4

    const-string v1, "AddList"

    aput-object v1, v0, v5

    const-string v1, "AddNickList"

    aput-object v1, v0, v6

    const-string v1, "SName"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "WV-CSP-Message"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ClientID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Code"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ContactList"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ContentData"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ContentEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ContentSize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ContentType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DetailedResult"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EntityList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Group"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GroupID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "GroupList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "InUse"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Logo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MessageID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "MessageURI"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MSISDN"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "NickList"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "NickName"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Poll"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Presence"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PresenceSubList"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PresenceValue"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Property"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Qualifier"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "RemoveList"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "RemoveNickList"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Result"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ScreenName"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Sender"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Session"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "SessionDescriptor"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "SessionID"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "SessionType"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Transaction"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "TransactionContent"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "TransactionDescriptor"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "TransactionID"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "TransactionMode"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "URL"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "URLList"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "User"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "UserID"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "UserList"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Validity"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Value"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    .line 123
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AllFunctions"

    aput-object v1, v0, v4

    const-string v1, "AllFunctionsRequest"

    aput-object v1, v0, v5

    const-string v1, "CancelInvite-Request"

    aput-object v1, v0, v6

    const-string v1, "CancelInviteUser-Request"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Capability"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CapabilityList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CapabilityRequest"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ClientCapability-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ClientCapability-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DigestBytes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DigestSchema"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Disconnect"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Functions"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GetSPInfo-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GetSPInfo-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "InviteID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "InviteNote"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Invite-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Invite-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "InviteType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "InviteUser-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "InviteUser-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "KeepAlive-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KeepAliveTime"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Login-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Login-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Logout-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Nonce"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Password"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Polling-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ResponseNote"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SearchElement"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SearchFindings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SearchID"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SearchIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SearchLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "KeepAlive-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SearchPairList"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Search-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Search-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "SearchResult"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Service-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Service-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "SessionCookie"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "StopSearch-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "TimeToLive"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "SearchString"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "CompletionFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-string v2, "ReceiveList"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "VerifyID-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Extended-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Extended-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "AgreedCapabilityList"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Extended-Data"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "OtherServer"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "PresenceAttributeNSName"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "SessionNSName"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "TransactionNSName"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    .line 186
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADDGM"

    aput-object v1, v0, v4

    const-string v1, "AttListFunc"

    aput-object v1, v0, v5

    const-string v1, "BLENT"

    aput-object v1, v0, v6

    const-string v1, "CAAUT"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CAINV"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CALI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CCLI"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ContListFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CREAG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DALI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DCLI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DELGR"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FundamentalFeat"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FWMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GALS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "GCLI"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GETGM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GETGP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "GETLM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "GETM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "GETPR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "GETSPI"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GETWL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GLBLU"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "GRCHN"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "GroupAuthFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GroupFeat"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GroupMgmtFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "GroupUseFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "IMAuthFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "IMFeat"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "IMReceiveFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "IMSendFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "INVIT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "InviteFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "MBRAC"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "MCLS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "MDELIV"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "NEWM"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "NOTIF"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "PresenceAuthFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "PresenceDeliverFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "PresenceFeat"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "REACT"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "REJCM"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "REJEC"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "RMVGM"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "SearchFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ServiceFunc"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "SETD"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "SETGP"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "SRCH"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "STSRC"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "SUBGCN"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "UPDPR"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "WVCSPFeat"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "MF"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "MG"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "MM"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    .line 249
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AcceptedCharset"

    aput-object v1, v0, v4

    const-string v1, "AcceptedContentLength"

    aput-object v1, v0, v5

    const-string v1, "AcceptedContentType"

    aput-object v1, v0, v6

    const-string v1, "AcceptedTransferEncoding"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "AnyContent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DefaultLanguage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "InitialDeliveryMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MultiTrans"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ParserSize"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ServerPollMin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SupportedBearer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SupportedCIRMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TCPAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TCPPort"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "UDPPort"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    .line 268
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CancelAuth-Request"

    aput-object v1, v0, v4

    const-string v1, "ContactListProperties"

    aput-object v1, v0, v5

    const-string v1, "CreateAttributeList-Request"

    aput-object v1, v0, v6

    const-string v1, "CreateList-Request"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "DefaultAttributeList"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DefaultContactList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DefaultList"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DeleteAttributeList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DeleteList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GetAttributeList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GetAttributeList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GetList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GetList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GetPresence-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GetPresence-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "GetWatcherList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GetWatcherList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ListManage-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ListManage-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "UnsubscribePresence-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PresenceAuth-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "PresenceAuth-User"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "PresenceNotification-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UpdatePresence-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SubscribePresence-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Auto-Subscribe"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GetReactiveAuthStatus-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GetReactiveAuthStatus-Response"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    .line 300
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Accuracy"

    aput-object v1, v0, v4

    const-string v1, "Address"

    aput-object v1, v0, v5

    const-string v1, "AddrPref"

    aput-object v1, v0, v6

    const-string v1, "Alias"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Building"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Caddr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "City"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ClientInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ClientProducer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ClientType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ClientVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CommC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CommCap"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ContactInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ContainedvCard"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Crossing1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Crossing2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DevManufacturer"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DirectContent"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "FreeTextLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GeoLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Language"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "NamedArea"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "OnlineStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PLMN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PrefC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PreferredContacts"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PreferredLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PreferredContent"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PreferredvCard"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Registration"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "StatusContent"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "StatusMood"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "StatusText"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Street"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "TimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "UserAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Cap"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Cname"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Contact"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Cpriority"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Cstatus"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Note"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Zone"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v2, "Inf_link"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "InfoLink"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Link"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Text"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    .line 358
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BlockList"

    aput-object v1, v0, v4

    const-string v1, "BlockEntity-Request"

    aput-object v1, v0, v5

    const-string v1, "DeliveryMethod"

    aput-object v1, v0, v6

    const-string v1, "DeliveryReport"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "DeliveryReport-Request"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ForwardMessage-Request"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GetBlockedList-Request"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GetBlockedList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GetMessageList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GetMessageList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GetMessage-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GetMessage-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GrantList"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MessageDelivered"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MessageInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MessageNotification"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "NewMessage"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RejectMessage-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "SendMessage-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SendMessage-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SetDeliveryMethod-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DeliveryTime"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    .line 385
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AddGroupMembers-Request"

    aput-object v1, v0, v4

    const-string v1, "Admin"

    aput-object v1, v0, v5

    const-string v1, "CreateGroup-Request"

    aput-object v1, v0, v6

    const-string v1, "DeleteGroup-Request"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "GetGroupMembers-Request"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GetGroupMembers-Response"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GetGroupProps-Request"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GetGroupProps-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GroupChangeNotice"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GroupProperties"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Joined"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "JoinedRequest"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "JoinGroup-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "JoinGroup-Response"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "LeaveGroup-Request"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LeaveGroup-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Left"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MemberAccess-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "OwnProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RejectList-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RejectList-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RemoveGroupMembers-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SetGroupProps-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SubscribeGroupNotice-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SubscribeGroupNotice-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Users"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "WelcomeNote"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "JoinGroup"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SubscribeNotification"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SubscribeType"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "GetJoinedUsers-Request"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "GetJoinedUsers-Response"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AdminMapList"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AdminMapping"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Mapping"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ModMapping"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "UserMapList"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UserMapping"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    .line 428
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MP"

    aput-object v1, v0, v4

    const-string v1, "GETAUT"

    aput-object v1, v0, v5

    const-string v1, "GETJU"

    aput-object v1, v0, v6

    const-string v1, "VRID"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "VerifyIDFunc"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    .line 437
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CIR"

    aput-object v1, v0, v4

    const-string v1, "Domain"

    aput-object v1, v0, v5

    const-string v1, "ExtBlock"

    aput-object v1, v0, v6

    const-string v1, "HistoryPeriod"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "IDList"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MaxWatcherList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ReactiveAuthState"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ReactiveAuthStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ReactiveAuthStatusList"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Watcher"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WatcherStatus"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    .line 452
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "WV-CSP-NSDiscovery-Request"

    aput-object v1, v0, v4

    const-string v1, "WV-CSP-NSDiscovery-Response"

    aput-object v1, v0, v5

    const-string v1, "VersionList"

    aput-object v1, v0, v6

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    .line 459
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xmlns=http://www.wireless-village.org/CSP"

    aput-object v1, v0, v4

    const-string v1, "xmlns=http://www.wireless-village.org/PA"

    aput-object v1, v0, v5

    const-string v1, "xmlns=http://www.wireless-village.org/TRC"

    aput-object v1, v0, v6

    const-string v1, "xmlns=http://www.openmobilealliance.org/DTD/WV-CSP"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "xmlns=http://www.openmobilealliance.org/DTD/WV-PA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "xmlns=http://www.openmobilealliance.org/DTD/WV-TRC"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    .line 468
    const/16 v0, 0x78

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessType"

    aput-object v1, v0, v4

    const-string v1, "ActiveUsers"

    aput-object v1, v0, v5

    const-string v1, "Admin"

    aput-object v1, v0, v6

    const-string v1, "application/"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "application/vnd.wap.mms-message"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "application/x-sms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AutoJoin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BASE64"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Closed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Default"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DisplayName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "image/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Inband"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MaxActiveUsers"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "None"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Open"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Outband"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Private"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PrivateMessaging"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PrivilegeLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Public"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Request"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Restricted"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ScreenName"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Searchable"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "text/"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Topic"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "www.wireless-village.org"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "AutoDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Validity"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "ShowID"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "GRANTED"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "PENDING"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const-string v2, "GROUP_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GROUP_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "GROUP_TOPIC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "GROUP_USER_ID_JOINED"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "GROUP_USER_ID_OWNER"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "HTTP"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "STCP"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "SUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "USER_ALIAS"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "USER_EMAIL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "USER_FIRST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "USER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "USER_LAST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "USER_MOBILE_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "USER_ONLINE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "WAPSMS"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "WAPUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "GROUP_USER_ID_AUTOJOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    aput-object v3, v0, v1

    const/16 v1, 0x52

    aput-object v3, v0, v1

    const/16 v1, 0x53

    aput-object v3, v0, v1

    const/16 v1, 0x54

    aput-object v3, v0, v1

    const/16 v1, 0x55

    aput-object v3, v0, v1

    const/16 v1, 0x56

    aput-object v3, v0, v1

    const/16 v1, 0x57

    aput-object v3, v0, v1

    const/16 v1, 0x58

    aput-object v3, v0, v1

    const/16 v1, 0x59

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    const-string v2, "ANGRY"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "ANXIOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "ASHAMED"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "AUDIO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "BORED"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "CLI"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "COMPUTER"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "DISCREET"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "EMAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "EXCITED"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "HAPPY"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "IM_OFFLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "IM_ONLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "IN_LOVE"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "INVINCIBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "JEALOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "MOBILE_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "PDA"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "SAD"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "SLEEPY"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "VIDEO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "VIDEO_STREAM"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 41
    .local v0, parser:Lorg/kxml2/wap/WbxmlParser;
    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x1

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x2

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x3

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x4

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x5

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x6

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x7

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 49
    const/16 v1, 0x8

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 50
    const/16 v1, 0x9

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 51
    const/16 v1, 0xa

    sget-object v2, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 53
    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    .line 55
    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    .line 57
    return-object v0
.end method
