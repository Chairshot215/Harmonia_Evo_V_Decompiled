.class public Lcom/htc/laputa/engine/aidl/SvrData$STORECMDPARAM;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "STORECMDPARAM"
.end annotation


# static fields
.field public static final ACTIVATETRIAL:I = 0x7

.field public static final CANCELOPENCONTENTSTORE:I = 0x1

.field public static final CANCELVOUCHERCODE:I = 0x4

.field public static final CHECKMAPLICENSE:I = 0x8

.field public static final CLOSECONTENTSTORE:I = 0x2

.field public static final DOWNLOADMAPFROMCOUNTRYCODE:I = 0x5

.field public static final GETLICENSELIST:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GETSTOREITEM:I = 0xe

.field public static final GETWEBBASEDPAYMENTMETHODS:I = 0xc

.field public static final GETWEBBASEDPAYMENTURL:I = 0xd

.field public static final OPENCONTENTSTORE:I = 0x0

.field public static final OPENVOUCHERCODECATALOG:I = 0x9

.field public static final PURCHASEBUNDLEBYVOUCHERCODE:I = 0xa

.field public static final SEARCHCOUNTRYITEM:I = 0x3

.field public static final SYNCLICENSEFROMSERVER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$STORECMDPARAM;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
