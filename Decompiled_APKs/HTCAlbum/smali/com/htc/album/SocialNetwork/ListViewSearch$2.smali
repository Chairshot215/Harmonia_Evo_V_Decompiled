.class Lcom/htc/album/SocialNetwork/ListViewSearch$2;
.super Ljava/lang/Object;
.source "ListViewSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ListViewSearch;->initEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ActivitySearchView][afterTextChanged]: SCROLL state is not IDLE skip do FILTER"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v0, "TagSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivitySearchView][afterTextChanged]: TextChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->setFilter(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$200(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const v1, 0x9c41

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$2;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/album/SocialNetwork/ListViewSearch;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$100(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 333
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 338
    return-void
.end method
