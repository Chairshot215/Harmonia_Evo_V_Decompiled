.class Lcom/android/browser/NavScreen$1;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lcom/android/browser/NavTabScroller$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/browser/NavScreen$1;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/browser/NavScreen$1;->this$0:Lcom/android/browser/NavScreen;

    iget-object v1, v1, Lcom/android/browser/NavScreen;->mAdapter:Lcom/android/browser/NavScreen$TabAdapter;

    invoke-virtual {v1, p1}, Lcom/android/browser/NavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 138
    .local v0, tab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/NavScreen$1;->this$0:Lcom/android/browser/NavScreen;

    #calls: Lcom/android/browser/NavScreen;->onCloseTab(Lcom/android/browser/Tab;)V
    invoke-static {v1, v0}, Lcom/android/browser/NavScreen;->access$000(Lcom/android/browser/NavScreen;Lcom/android/browser/Tab;)V

    .line 139
    return-void
.end method
