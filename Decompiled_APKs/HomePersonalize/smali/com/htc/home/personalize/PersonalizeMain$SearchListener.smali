.class Lcom/htc/home/personalize/PersonalizeMain$SearchListener;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;Lcom/htc/home/personalize/PersonalizeMain$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;-><init>(Lcom/htc/home/personalize/PersonalizeMain;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    iget-boolean v1, v1, Lcom/htc/home/personalize/PersonalizeMain;->mIsShowSearchbar:Z

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mHeaderInput:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v1}, Lcom/htc/home/personalize/PersonalizeMain;->access$200(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, keyword:Ljava/lang/String;
    const-string v1, "Personalize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain$SearchListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #getter for: Lcom/htc/home/personalize/PersonalizeMain;->mListAdapter:Lcom/htc/home/personalize/AddListAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/PersonalizeMain;->access$300(Lcom/htc/home/personalize/PersonalizeMain;)Lcom/htc/home/personalize/AddListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/AddListAdapter;->setListItemsData(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0           #keyword:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 263
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 269
    return-void
.end method
