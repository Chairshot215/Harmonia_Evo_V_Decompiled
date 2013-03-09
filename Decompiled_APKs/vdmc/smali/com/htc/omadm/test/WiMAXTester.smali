.class public Lcom/htc/omadm/test/WiMAXTester;
.super Ljava/lang/Object;
.source "WiMAXTester.java"


# static fields
.field public static InternalNodes:[[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field public static LeafNodes:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    const-string v0, "TestMainActivity"

    sput-object v0, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    .line 10
    const/16 v0, 0xa7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/DevCap"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/DevCap/IPCap"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/UpdateMethods"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/UpdateMethods/ClientInitiated"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/8"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/9"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/10"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/11"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/H-NSP/12"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/RAPL"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/RAPL/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/RAPL/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/RAPL/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/RAPL/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/NetworkParameters/ChannelPlan/Entries/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0/SERVER-REALMS"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0/SERVER-REALMS/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0/EAP-AKA"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0/CERT"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/SubscriptionParameters/PrimarySubscription/EAP/0/CERT/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/RootCA"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/RootCA/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/RootCA/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/Sprint/RootCA/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/8"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/9"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/10"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/11"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/H-NSP/12"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/0/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/1/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/CAPL/Entries/2/ChPlanRefIds/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/RAPL"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/RAPL/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/RAPL/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/RAPL/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/RAPL/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/3"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/4"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/5"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/6"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/NetworkParameters/ChannelPlan/Entries/7"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0/SERVER-REALMS"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0/SERVER-REALMS/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0/EAP-AKA"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0/CERT"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0/CERT/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/SubscriptionParameters/PrimarySubscription/EAP/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/RootCA"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/RootCA/0"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/RootCA/1"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/0/RootCA/2"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./Con"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./Con/MediaStream"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/test/WiMAXTester;->InternalNodes:[[Ljava/lang/String;

    .line 194
    const/16 v0, 0x34

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0/Man"

    aput-object v2, v1, v4

    const-string v2, "persist.wimax.0.Man"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0/Mod"

    aput-object v2, v1, v4

    const-string v2, "persist.wimax.0.Mod"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0/FwV"

    aput-object v2, v1, v4

    const-string v2, "persist.wimax.0.FwV"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0/HwV"

    aput-object v2, v1, v4

    const-string v2, "persist.wimax.0.HwV"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "./WiMAX/WiMAXRadioModule/0/SwV"

    aput-object v2, v1, v4

    const-string v2, "persist.wimax.0.SwV"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/WiMAXRadioModule/0/MACAddress"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.MAC"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/WiMAXRadioModule/0/TO-FUMO-REF"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.TO-FUMO-REF"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/TO-WiMAX-REF"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.TO-WiMAX-REF"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/IPCap/IPv4"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.IPv4"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/IPCap/IPv6"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.IPv6"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/UpdateMethods/ServerInitiated"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.ServerInitiated"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/UpdateMethods/ClientInitiated/PollingSupported"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.CLInit.PollSuprt"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/DevCap/UpdateMethods/ClientInitiated/PollingInterval"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.CLInit.PollIntrvl"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/WorkMode"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.WorkMode"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/SessionContinuity"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Session_Conti"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/ScanAttemptTimeout"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Scan_Timeout"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/ScanRetries"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Scan_Retry"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/IdleSleep"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Idle_Sleep"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/EntryRX"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Entry_RX"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/EntryCINR"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Entry_CINR"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/EntryDelay"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Entry_Delay"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/ExitCINR"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Exit_CINR"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAX/Ext/ExitDelay"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Exit_Delay"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/0/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/1/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.1.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/2/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.2.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/3/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.3.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/4/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.4.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/5/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.5.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/6/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.6.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/7/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.7.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/8/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.8.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/9/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.9.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/10/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.10.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/11/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.11.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/12/H-NSP-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.12.H-NSP-ID"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/OperatorName"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.OperatorName"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/NetworkParameters/PollingInterval"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.PollingInterval"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/Name"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Primary.Name"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/Activated"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.Primary.Activated"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/METHOD-TYPE"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.METHOD-TYPE"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/VENDOR-ID"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.VENDOR-ID"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/VENDOR-TYPE"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.VENDOR-TYPE"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/USER-IDENTITY"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.USER-IDENTITY"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/PROVISIONED-PSEUDO-IDENTITY"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.PSEUDO-IDENTITY"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/PASSWORD"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.PASSWORD"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/REALM"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.REALM"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/USE-PRIVACY"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.USE-PRIVACY"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/ENCAPS"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.ENCAPS"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/VFY-SERVER-REALM"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.VFY-SRVR-REALM"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubscription/EAP/0/SERVER-REALMS/0/SERVER-REALM"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.S-RLM.0.S-RLM"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "./WiMAXSupp/Operator/sprint/TO-IP-REF"

    aput-object v3, v2, v4

    const-string v3, "persist.wimax.0.To-IP-REF"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyJNIWiMAXGet(Lcom/htc/omadm/libdo/config/ConfigManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    .line 612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 614
    sget-object v1, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method public static verifyJNIWiMAXSet(Lcom/htc/omadm/libdo/config/ConfigManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    const/4 v5, 0x0

    .line 620
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 622
    sget-object v1, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    const-string v4, "2010"

    invoke-virtual {p0, v3, v4}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v1, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method public static verifyWiMAXAdd()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 648
    new-instance v1, Lcom/htc/ipl/wimax;

    invoke-direct {v1}, Lcom/htc/ipl/wimax;-><init>()V

    .line 649
    .local v1, mWimax:Lcom/htc/ipl/wimax;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 651
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    const-string v5, "1140"

    invoke-virtual {v1, v4, v5}, Lcom/htc/ipl/wimax;->AddValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Lcom/htc/ipl/wimax;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method

.method public static verifyWiMAXDel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 658
    new-instance v2, Lcom/htc/ipl/wimax;

    invoke-direct {v2}, Lcom/htc/ipl/wimax;-><init>()V

    .line 659
    .local v2, mWimax:Lcom/htc/ipl/wimax;
    const-string v0, "./WiMAXSupp/Operator/sprint/NetworkParameters/H-NSP/"

    .line 660
    .local v0, STR_HNSP:Ljava/lang/String;
    const-string v3, ""

    .line 661
    .local v3, node_NSP:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0xd

    if-ge v1, v4, :cond_0

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete H-NSP["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/htc/ipl/wimax;->DelValue(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 668
    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v6, v6, v1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v6, v6, v1

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/htc/ipl/wimax;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 670
    :cond_1
    return-void
.end method

.method public static verifyWiMAXGet()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 629
    new-instance v1, Lcom/htc/ipl/wimax;

    invoke-direct {v1}, Lcom/htc/ipl/wimax;-><init>()V

    .line 630
    .local v1, mWimax:Lcom/htc/ipl/wimax;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 632
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Lcom/htc/ipl/wimax;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    return-void
.end method

.method public static verifyWiMAXSet()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 638
    new-instance v1, Lcom/htc/ipl/wimax;

    invoke-direct {v1}, Lcom/htc/ipl/wimax;-><init>()V

    .line 639
    .local v1, mWimax:Lcom/htc/ipl/wimax;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 641
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    const-string v5, "1140"

    invoke-virtual {v1, v4, v5}, Lcom/htc/ipl/wimax;->SetValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v2, Lcom/htc/omadm/test/WiMAXTester;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/omadm/test/WiMAXTester;->LeafNodes:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Lcom/htc/ipl/wimax;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method
