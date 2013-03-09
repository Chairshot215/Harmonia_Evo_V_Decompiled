.class Landroid/webkit/WebView$RequestFormData;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestFormData"
.end annotation


# instance fields
.field private mAutoComplete:Z

.field private mAutoFillable:Z

.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    invoke-static {p3}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-boolean p5, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    iput-boolean p6, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Landroid/webkit/WebView$RequestFormData;->mAutoFillable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040322

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getPreviewString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/WebView$RequestFormData;->mAutoComplete:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$RequestFormData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebView$RequestFormData;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewDatabase;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v0, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/webkit/WebView$RequestFormData;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillProfileIsSet(Z)V

    goto :goto_0
.end method
