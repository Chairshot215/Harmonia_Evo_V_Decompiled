.class public Lorg/apache/xalan/xslt/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# static fields
.field public static final CLASS_NOTPRESENT:Ljava/lang/String; = "not-present"

.field public static final CLASS_PRESENT:Ljava/lang/String; = "present-unknown-version"

.field public static final ERROR:Ljava/lang/String; = "ERROR."

.field public static final ERROR_FOUND:Ljava/lang/String; = "At least one error was found!"

.field public static final FOUNDCLASSES:Ljava/lang/String; = "foundclasses."

.field public static final VERSION:Ljava/lang/String; = "version."

.field public static final WARNING:Ljava/lang/String; = "WARNING."

.field private static jarVersions:Ljava/util/Hashtable;


# instance fields
.field public jarNames:[Ljava/lang/String;

.field protected outWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/32 v4, 0xdcb5e

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd1468

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6b7ad

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x6a77e

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x68109

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_1_2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xab848

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb0022

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xb2caa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_1_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd4f31

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd7833

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_D11"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xe18da

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd290

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd38a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdd408

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf0151

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf379c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xfbb7c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x91a3c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x901a7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x9005b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_3_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x13f02b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x144463

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x148209

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x149309

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar from xalan-j_2_5_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x135b9a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xsltc.jar-bundled from xalan-j_2_3_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x18764

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_2_0 or xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a7c4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_3_0, or xalan-j_2_3_1 from xml-commons-1.0.b2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a9f9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_0 from xml-commons RIVERCOURT1 branch"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1bc55

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from xalan-j_2_4_1 from factoryfinder-build of xml-commons RIVERCOURT1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e720

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1e734

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from tck-jaxp-1_2_0 branch of xml-commons, tag: xml-commons-external_1_2_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2f69d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from head branch of xml-commons, tag: xml-commons-external_1_3_02"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x67a2a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from Xerces Tools releases - ERROR:DO NOT USE!"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x184a2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_1 from xerces-1..."

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16de37

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2 from xerces-1_2_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16a860

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_1 from xerces-1_2_1.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc466c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_1_2_2 from xerces-1_2_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x16e06c

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_0 from xerces-1_2_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x187e92

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_0_1 from xerces-1_3_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_1_0 from xerces-1_4.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_0.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b8285

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xerces-1_4_2.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a77c2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from Xerces-J-bin.2.0.0.beta3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1b99f3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_D10,D11,D12 or xerces-1_4_3.bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1ba633

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xerces.jar from xalan-j_2_2_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a3fe4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a6605

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_3_0 or xalan-j_2_3_1 from xerces-2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1a615d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_D1 from xerces-2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xed4fb

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_0 from xerces-2_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xcb063

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_4_1 from xerces-2_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xd9ba9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xalan-j_2_5_D1 from xerces-2_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xdabb4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from xerces-2_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xf6c76

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.6.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x125e94

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xercesImpl.jar from Xerces-J-bin.2.7.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x926d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x94d4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanj1compat.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x495b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x53cd

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_0_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60fa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_3_1 or xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x60ff

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalanservlet.jar from xalan-j_2_4_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15f2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x213c5

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jaxp1.0.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x6ef4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2db1a

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0xc3bb2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xalan.jar from jaxp-1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2ff2f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x822b

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from crimson-1.1.1 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x2548d

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x1584f

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "xml-apis.jar from crimson-1.1.2beta2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x32630

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "crimson.jar from crimson-1.1.3 or jakarta-ant-1.4.1b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/32 v2, 0x21406

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "parser.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x15a1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "jaxp.jar from jakarta-ant-1.3 or 1.2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xalan.jar"

    aput-object v2, v0, v1

    const-string v1, "xalansamples.jar"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "xalanj1compat.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xalanservlet.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "serializer.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "xerces.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "xercesImpl.jar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "testxsl.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "crimson.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lotusxsl.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jaxp.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "parser.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dom.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sax.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "xml.jar"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "xml-apis.jar"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "xsltc.jar"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x1

    new-instance v3, Ljava/io/PrintWriter;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/4 v2, 0x0

    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    const-string v5, "-out"

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    array-length v5, p0

    if-ge v2, v5, :cond_1

    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/FileWriter;

    aget-object v6, p0, v2

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# WARNING: -out "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "# WARNING: -out argument should have a filename, output sent to console"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/xalan/xslt/EnvironmentCheck;

    invoke-direct {v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkEnvironment(Ljava/io/PrintWriter;)Z

    return-void
.end method


# virtual methods
.method public appendEnvironmentReport(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Hashtable;)V
    .locals 15

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v12, "EnvironmentCheck"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v12, "version"

    const-string v13, "$Revision: 468646 $"

    invoke-interface {v3, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-nez p3, :cond_2

    const-string v12, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v12, "result"

    const-string v13, "ERROR"

    invoke-interface {v10, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "appendEnvironmentReport called with null Hashtable!"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "appendEnvironmentReport threw: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    const-string v12, "environment"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v12, "foundclasses."

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Vector;

    move-object/from16 v0, p2

    invoke-virtual {p0, v5, v0, v11, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v12

    or-int/2addr v4, v12

    goto :goto_1

    :cond_3
    const-string v12, "ERROR."

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v12, "item"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v12, "key"

    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :try_start_3
    const-string v12, "item"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v12, "key"

    invoke-interface {v9, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR. Reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " threw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    :cond_5
    const-string v12, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v13, "result"

    if-eqz v4, :cond_6

    const-string v12, "ERROR"

    :goto_2
    invoke-interface {v10, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :cond_6
    const-string v12, "OK"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method protected appendFoundJars(Lorg/w3c/dom/Node;Lorg/w3c/dom/Document;Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 12

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    invoke-virtual {p3, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v9, "ERROR."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string v9, "foundJar"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v9, "name"

    const/4 v10, 0x0

    const-string v11, "-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "desc"

    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const-string v9, "foundJar"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR. Reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method protected checkAntVersion(Ljava/util/Hashtable;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "org.apache.tools.ant.Main"

    const-string v1, "getAntVersion"

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Class;

    const-string v7, "org.apache.tools.ant.Main"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-string v7, "getAntVersion"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "version.ant"

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v7, "version.ant"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected checkDOMVersion(Ljava/util/Hashtable;)V
    .locals 16

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const-string v5, "org.w3c.dom.Document"

    const-string v6, "createElementNS"

    const-string v3, "org.w3c.dom.Node"

    const-string v4, "supported"

    const-string v1, "org.w3c.dom.Node"

    const-string v2, "isSupported"

    const/4 v13, 0x2

    new-array v12, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    :try_start_0
    const-string v13, "org.w3c.dom.Document"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    const-string v13, "createElementNS"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v13, "version.DOM"

    const-string v14, "2.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v13, "org.w3c.dom.Node"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    const-string v13, "supported"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v13, "ERROR.version.DOM.draftlevel"

    const-string v14, "2.0wd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    :try_start_2
    const-string v13, "org.w3c.dom.Node"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    const-string v13, "isSupported"

    invoke-virtual {v7, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v13, "version.DOM.draftlevel"

    const-string v14, "2.0fd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_3
    const-string v13, "ERROR.version.DOM.draftlevel"

    const-string v14, "2.0unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v8

    const-string v13, "ERROR.version.DOM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ERROR attempting to load DOM level 2 class: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "ERROR."

    const-string v14, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkEnvironment(Ljava/io/PrintWriter;)Z
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getEnvironmentHash()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xalan/xslt/EnvironmentCheck;->writeEnvironmentReport(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "# WARNING: Potential problems found in your environment!"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string v2, "#    Check any \'ERROR\' items above against the Xalan FAQs"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string v2, "#    to correct potential problems with your classes/jars"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const-string v2, "#    http://xml.apache.org/xalan-j/faq.html"

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    const-string v2, "# YAHOO! Your environment seems to be OK."

    invoke-virtual {p0, v2}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected checkJAXPVersion(Ljava/util/Hashtable;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "javax.xml.parsers.DocumentBuilder"

    const-string v0, "getDOMImplementation"

    const-string v6, "javax.xml.parsers.DocumentBuilder"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "getDOMImplementation"

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v6, "version.JAXP"

    const-string v7, "1.1 or higher"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    if-eqz v2, :cond_1

    const-string v6, "ERROR.version.JAXP"

    const-string v7, "1.0.1"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v6, "ERROR.version.JAXP"

    const-string v7, "not-present"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ERROR."

    const-string v7, "At least one error was found!"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected checkParserVersion(Ljava/util/Hashtable;)V
    .locals 10

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :try_start_0
    const-string v1, "org.apache.xerces.framework.Version"

    const-string v7, "org.apache.xerces.framework.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    const-string v7, "fVersion"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "version.xerces1"

    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v2, "org.apache.xerces.impl.Version"

    const-string v7, "org.apache.xerces.impl.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    const-string v7, "fVersion"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "version.xerces2"

    invoke-virtual {p1, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "org.apache.crimson.parser.Parser2"

    const-string v7, "org.apache.crimson.parser.Parser2"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    const-string v7, "version.crimson"

    const-string v8, "present-unknown-version"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v4

    const-string v7, "version.xerces1"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v7, "version.xerces2"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v7, "version.crimson"

    const-string v8, "not-present"

    invoke-virtual {p1, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method protected checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;
    .locals 11

    const/4 v10, 0x2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, p2

    if-nez v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_3

    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_0
    new-instance v2, Ljava/util/Hashtable;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "xalan.jar"

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-apparent.version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Lorg/apache/xalan/xslt/EnvironmentCheck;->getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v10}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING. Classpath entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-apparent.version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "not-present"

    invoke-virtual {v2, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected checkProcessorVersion(Ljava/util/Hashtable;)V
    .locals 16

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :try_start_0
    const-string v1, "org.apache.xalan.xslt.XSLProcessorVersion"

    const-string v13, "org.apache.xalan.xslt.XSLProcessorVersion"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "PRODUCT"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, "LANGUAGE"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, "S_VERSION"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v13, 0x3b

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, "version.xalan1"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v4, "org.apache.xalan.processor.XSLProcessorVersion"

    const-string v13, "org.apache.xalan.processor.XSLProcessorVersion"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "S_VERSION"

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, "version.xalan2x"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v2, "org.apache.xalan.Version"

    const-string v3, "getVersion"

    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/Class;

    const-string v13, "org.apache.xalan.Version"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    const-string v13, "getVersion"

    invoke-virtual {v6, v13, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v10, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "version.xalan2_2"

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v7

    const-string v13, "version.xalan1"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v13, "version.xalan2x"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v8

    const-string v13, "version.xalan2_2"

    const-string v14, "not-present"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method protected checkSAXVersion(Ljava/util/Hashtable;)V
    .locals 17

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct/range {p1 .. p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    const-string v1, "org.xml.sax.Parser"

    const-string v2, "parse"

    const-string v5, "org.xml.sax.XMLReader"

    const-string v6, "parse"

    const-string v3, "org.xml.sax.helpers.AttributesImpl"

    const-string v4, "setAttributes"

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lorg/xml/sax/Attributes;

    aput-object v15, v7, v14

    :try_start_0
    const-string v14, "org.xml.sax.helpers.AttributesImpl"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    const-string v14, "setAttributes"

    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string v14, "version.SAX"

    const-string v15, "2.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const-string v14, "ERROR.version.SAX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "ERROR."

    const-string v15, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v14, "org.xml.sax.XMLReader"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    const-string v14, "parse"

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string v14, "version.SAX-backlevel"

    const-string v15, "2.0beta2-or-earlier"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v10

    const-string v14, "ERROR.version.SAX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 2 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "ERROR."

    const-string v15, "At least one error was found!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    const-string v14, "org.xml.sax.Parser"

    invoke-static {}, Lorg/apache/xalan/xslt/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lorg/apache/xalan/xslt/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    const-string v14, "parse"

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string v14, "version.SAX-backlevel"

    const-string v15, "1.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const-string v14, "ERROR.version.SAX-backlevel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR attempting to load SAX version 1 class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected checkSystemProperties(Ljava/util/Hashtable;)V
    .locals 8

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    :try_start_0
    const-string v6, "java.version"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "java.version"

    invoke-virtual {p1, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v6, "java.class.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "java.class.path"

    invoke-virtual {p1, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "foundclasses.java.class.path"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v6, "sun.boot.class.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "sun.boot.class.path"

    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v6, "foundclasses.sun.boot.class.path"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v6, "java.ext.dirs"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v6, "java.ext.dirs"

    invoke-virtual {p1, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarNames:[Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkPathForJars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v6, "foundclasses.java.ext.dirs"

    invoke-virtual {p1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v4

    const-string v6, "java.version"

    const-string v7, "WARNING: SecurityException thrown accessing system version properties"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v6, "java.class.path"

    const-string v7, "WARNING: SecurityException thrown accessing system classpath properties"

    invoke-virtual {p1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected getApparentVersion(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    sget-object v1, Lorg/apache/xalan/xslt/EnvironmentCheck;->jarVersions:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "xerces.jar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "xercesImpl.jar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WARNING."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "present-unknown-version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "present-unknown-version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnvironmentHash()Ljava/util/Hashtable;
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkJAXPVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkProcessorVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkParserVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkAntVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkDOMVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSAXVersion(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/xslt/EnvironmentCheck;->checkSystemProperties(Ljava/util/Hashtable;)V

    return-object v0
.end method

.method protected logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#---- BEGIN Listing XML-related jars in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :try_start_0
    const-string v7, "ERROR."

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= threw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#----- END Listing XML-related jars in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected logMsg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/xslt/EnvironmentCheck;->outWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected writeEnvironmentReport(Ljava/util/Hashtable;)Z
    .locals 8

    if-nez p1, :cond_0

    const-string v6, "# ERROR: writeEnvironmentReport called with null Hashtable"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    const-string v6, "#---- BEGIN writeEnvironmentReport($Revision: 468646 $): Useful stuff found: ----"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v6, "foundclasses."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    invoke-virtual {p0, v5, v3}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logFoundJars(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    goto :goto_1

    :cond_1
    const-string v6, "ERROR."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= threw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v6, "#----- END writeEnvironmentReport: Useful properties found: -----"

    invoke-virtual {p0, v6}, Lorg/apache/xalan/xslt/EnvironmentCheck;->logMsg(Ljava/lang/String;)V

    goto :goto_0
.end method
