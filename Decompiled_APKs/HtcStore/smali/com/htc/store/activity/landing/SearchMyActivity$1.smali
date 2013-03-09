.class Lcom/htc/store/activity/landing/SearchMyActivity$1;
.super Ljava/lang/Object;
.source "SearchMyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/SearchMyActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/SearchMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$1;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$1;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$100(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$1;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mFilter:Landroid/widget/Filter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$200(Lcom/htc/store/activity/landing/SearchMyActivity;)Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$1;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mFilter:Landroid/widget/Filter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$200(Lcom/htc/store/activity/landing/SearchMyActivity;)Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$1;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$100(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charsequence"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charsequence"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 110
    return-void
.end method
