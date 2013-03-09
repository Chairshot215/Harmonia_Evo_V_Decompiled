.class public Lcom/htc/laputa/engine/aidl/SvrData$STORECMD;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "STORECMD"
.end annotation


# static fields
.field public static final ACTIVATECANCEL:I = 0x6b

.field public static final ACTIVATESTART:I = 0x69

.field public static final ACTIVATEWITHOUTVOUCHERSTART:I = 0x6a

.field public static final CANCELCARTADD:I = 0x77

.field public static final CANCELCARTBUY:I = 0x78

.field public static final CANCELIMAGEPREVIEW:I = 0x75

.field public static final CANCELRELATEDPRODUCT:I = 0x76

.field public static final CANCELVOUCHERCODE:I = 0x4

.field public static final CARTADD:I = 0x71

.field public static final CARTBUY:I = 0x73

.field public static final CARTCLEAR:I = 0x70

.field public static final CARTREMOVE:I = 0x72

.field public static final COMMAND:I = 0x3

.field public static final DELETECONTENT:I = 0x6f

.field public static final DOWNLOADCANCEL:I = 0x66

.field public static final DOWNLOADIMAGEPREVIEW:I = 0x6d

.field public static final DOWNLOADPAUSE:I = 0x6e

.field public static final DOWNLOADSTART:I = 0x65

.field public static final EXTRAS_DELETECONTENT:I = 0xc9

.field public static final EXTRAS_DELETECONTENTNOCALLBACK:I = 0xcc

.field public static final EXTRAS_PURCHASE:I = 0xca

.field public static final EXTRAS_TOSTOREITEM:I = 0xcb

.field public static final GETAFFECTEDMAPS:I = 0x79

.field public static final GETCONTENTLIST:I = 0x6

.field public static final GETLICENSELIST:I = 0x7

.field public static final NOTIFY_STORE_APP_START:I = 0x133

.field public static final OPENCATALOG:I = 0x1

.field public static final PURCHASECANCEL:I = 0x68

.field public static final PURCHASESTART:I = 0x67

.field public static final SEARCHRELATEDPRODUCT:I = 0x6c

.field public static final SENDVOUCHERCODE:I = 0x2

.field public static final SERVICE_GETPAUSEDITEM:I = 0x132

.field public static final SERVICE_GETQUEUEITEM:I = 0x12e

.field public static final SERVICE_GETQUEUEMAPS:I = 0x12f

.field public static final SERVICE_GETQUEUESIZE:I = 0x12d

.field public static final SERVICE_GETQUEUEVOICES:I = 0x130

.field public static final SERVICE_REMOVEUNFINISHEDITEM:I = 0x131

.field public static final SYNCLICENSE:I = 0x5

.field public static final UPDATELICENSE:I = 0x74


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$STORECMD;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
