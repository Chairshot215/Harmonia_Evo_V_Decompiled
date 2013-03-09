.class Lcom/android/mailcommon/WebViewContextMenu$Share;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mailcommon/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Share"
.end annotation


# instance fields
.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mailcommon/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mailcommon/WebViewContextMenu$Share;->this$0:Lcom/android/mailcommon/WebViewContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/android/mailcommon/WebViewContextMenu$Share;->mUri:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mailcommon/WebViewContextMenu$Share;->this$0:Lcom/android/mailcommon/WebViewContextMenu;

    iget-object v1, p0, Lcom/android/mailcommon/WebViewContextMenu$Share;->mUri:Ljava/lang/String;

    #calls: Lcom/android/mailcommon/WebViewContextMenu;->shareLink(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->access$100(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method
