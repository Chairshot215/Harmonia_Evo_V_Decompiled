.class public Lcom/futuredial/publicobj/RetCode$PIMError;
.super Ljava/lang/Object;
.source "RetCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/RetCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PIMError"
.end annotation


# static fields
.field public static final DERR_ACCESS:I = 0x4e36

.field public static final DERR_ACCESSDEFFOLDER:I = 0x4e3e

.field public static final DERR_CANCEL:I = 0x4e35

.field public static final DERR_CHECKSUM:I = 0x4e25

.field public static final DERR_COMINGCALL:I = 0x4e32

.field public static final DERR_COPYRIGHTPROTECTED:I = 0x4e41

.field public static final DERR_DATATYPE:I = 0x4e24

.field public static final DERR_DECODE:I = 0x4e2d

.field public static final DERR_DEVICETYPE:I = 0x4e23

.field public static final DERR_DIRECTORYNOTEMPTY:I = 0x4e40

.field public static final DERR_DISMATCHDATA:I = 0x4e42

.field public static final DERR_DUPLICATE:I = 0x4e3a

.field public static final DERR_DUPLICATENAME:I = 0x4e3b

.field public static final DERR_ENCODE:I = 0x4e2e

.field public static final DERR_FULL:I = 0x4e2c

.field public static final DERR_INITIALIZE:I = 0x4e39

.field public static final DERR_INQUIRE:I = 0x4e30

.field public static final DERR_LINKPHONE:I = 0x4e28

.field public static final DERR_LOADDLL:I = 0x4e38

.field public static final DERR_MODULE:I = 0x4e22

.field public static final DERR_NOFILE:I = 0x4e37

.field public static final DERR_NONETWORK:I = 0x4e3c

.field public static final DERR_NORESPONSE:I = 0x4e31

.field public static final DERR_OPENPORT:I = 0x4e27

.field public static final DERR_OVERLONGFILENAME:I = 0x4e3f

.field public static final DERR_PACKAGE:I = 0x4e2b

.field public static final DERR_READDATA:I = 0x4e34

.field public static final DERR_READPORT:I = 0x4e2a

.field public static final DERR_REQUEST:I = 0x4e2f

.field public static final DERR_TIMEOUT:I = 0x4e26

.field public static final DERR_WRITEDATA:I = 0x4e33

.field public static final DERR_WRITEPORT:I = 0x4e29


# instance fields
.field final synthetic this$0:Lcom/futuredial/publicobj/RetCode;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/RetCode;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/futuredial/publicobj/RetCode$PIMError;->this$0:Lcom/futuredial/publicobj/RetCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
