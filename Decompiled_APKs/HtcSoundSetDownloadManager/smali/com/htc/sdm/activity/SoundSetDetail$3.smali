.class Lcom/htc/sdm/activity/SoundSetDetail$3;
.super Ljava/lang/Object;
.source "SoundSetDetail.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$3;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 1120
    const/4 v0, 0x1

    .line 1121
    .local v0, rtn:Z
    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 1126
    const/4 v0, 0x1

    .line 1127
    .local v0, rtn:Z
    return v0
.end method
