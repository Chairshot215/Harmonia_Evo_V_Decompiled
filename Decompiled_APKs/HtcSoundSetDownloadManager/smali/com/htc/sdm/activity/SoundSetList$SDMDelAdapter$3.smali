.class Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2267
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetList;->setResult(I)V

    .line 2271
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    .line 2272
    return-void
.end method
