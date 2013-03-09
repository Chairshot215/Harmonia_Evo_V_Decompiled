.class Lcom/android/browser/NavScreen$TabAdapter$1;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/NavScreen$TabAdapter;

.field final synthetic val$position:I

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tabview:Lcom/android/browser/NavTabView;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen$TabAdapter;Lcom/android/browser/NavTabView;Lcom/android/browser/Tab;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iput-object p2, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    iput-object p3, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    iput p4, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isClose(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    iget-object v1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, v1}, Lcom/android/browser/NavTabScroller;->animateOut(Landroid/view/View;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isTitle(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tab:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/NavScreen;->switchToTab(Lcom/android/browser/Tab;)V
    invoke-static {v0, v1}, Lcom/android/browser/NavScreen;->access$100(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V

    .line 243
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget v1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/NavScreen;->close(IZ)V

    .line 245
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v0, v2}, Lcom/android/browser/PhoneUi;->editUrl(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mUi:Lcom/android/browser/PhoneUi;

    invoke-virtual {v0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$tabview:Lcom/android/browser/NavTabView;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavTabView;->isWebView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->this$1:Lcom/android/browser/NavScreen$TabAdapter;

    iget-object v0, v0, Lcom/android/browser/NavScreen$TabAdapter;->this$0:Lcom/android/browser/NavScreen;

    iget v1, p0, Lcom/android/browser/NavScreen$TabAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->close(I)V

    goto :goto_0
.end method
