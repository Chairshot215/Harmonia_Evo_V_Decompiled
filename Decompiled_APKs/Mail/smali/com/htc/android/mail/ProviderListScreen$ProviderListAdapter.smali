.class Lcom/htc/android/mail/ProviderListScreen$ProviderListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProviderListAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 0
    .parameter "c"
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 90
    check-cast p1, Lcom/htc/android/mail/ProviderListItem;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/htc/android/mail/ProviderListItem;->bind(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 91
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/htc/android/mail/ProviderListItem;->isEnableProviderListItemIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
