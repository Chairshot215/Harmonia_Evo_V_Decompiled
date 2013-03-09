.class final Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
.super Ljava/lang/Object;
.source "BrowseOnlineDirectoriesActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnlineDirectoryItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    .line 132
    iput-object v1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->intent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;)I
    .locals 2
    .parameter "t"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    check-cast p1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->compareTo(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
