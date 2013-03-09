.class public Lcom/htc/store/activity/detail/DetailComments;
.super Lcom/htc/store/activity/BaseActivity;
.source "DetailComments.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/store/activity/detail/DetailComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/detail/DetailComments;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 13
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
