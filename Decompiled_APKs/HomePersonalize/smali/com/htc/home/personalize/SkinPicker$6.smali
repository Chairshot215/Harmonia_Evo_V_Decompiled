.class Lcom/htc/home/personalize/SkinPicker$6;
.super Ljava/lang/Object;
.source "SkinPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SkinPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$6;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 2
    .parameter "nPos"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$6;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #setter for: Lcom/htc/home/personalize/SkinPicker;->mSelectedSkinId:I
    invoke-static {v0, p1}, Lcom/htc/home/personalize/SkinPicker;->access$202(Lcom/htc/home/personalize/SkinPicker;I)I

    .line 872
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$6;->this$0:Lcom/htc/home/personalize/SkinPicker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/home/personalize/SkinPicker;->mIsMenuItemNeedUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/SkinPicker;->access$102(Lcom/htc/home/personalize/SkinPicker;Z)Z

    .line 873
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$6;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1100(Lcom/htc/home/personalize/SkinPicker;)V

    .line 874
    return-void
.end method
