.class Lcom/htc/sdm/activity/SoundSetList$4;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$4;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$4;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetList;->showDialog(I)V

    .line 473
    return-void
.end method
