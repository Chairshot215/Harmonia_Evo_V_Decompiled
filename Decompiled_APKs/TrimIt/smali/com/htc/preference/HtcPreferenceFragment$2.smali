.class Lcom/htc/preference/HtcPreferenceFragment$2;
.super Ljava/lang/Object;
.source "HtcPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceFragment$2;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment$2;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    #getter for: Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/htc/preference/HtcPreferenceFragment;->access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceFragment$2;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    #getter for: Lcom/htc/preference/HtcPreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/htc/preference/HtcPreferenceFragment;->access$100(Lcom/htc/preference/HtcPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 132
    return-void
.end method
