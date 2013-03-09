.class public Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
.super Ljava/lang/Object;
.source "UakChooseFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UakInfo"
.end annotation


# instance fields
.field public intentRecord:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 47
    return-void
.end method
