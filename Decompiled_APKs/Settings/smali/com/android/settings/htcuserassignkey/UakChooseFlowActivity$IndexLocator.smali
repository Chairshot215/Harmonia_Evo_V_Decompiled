.class Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
.super Ljava/lang/Object;
.source "UakChooseFlowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexLocator"
.end annotation


# instance fields
.field public groupIndex_0b:I

.field public keyIndex_0b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 52
    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>()V

    return-void
.end method
