.class Lcom/android/mailcommon/WebViewContextMenu$Copy;
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
    name = "Copy"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/mailcommon/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mailcommon/WebViewContextMenu$Copy;->this$0:Lcom/android/mailcommon/WebViewContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/mailcommon/WebViewContextMenu$Copy;->mText:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mailcommon/WebViewContextMenu$Copy;->this$0:Lcom/android/mailcommon/WebViewContextMenu;

    iget-object v1, p0, Lcom/android/mailcommon/WebViewContextMenu$Copy;->mText:Ljava/lang/CharSequence;

    #calls: Lcom/android/mailcommon/WebViewContextMenu;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->access$000(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
