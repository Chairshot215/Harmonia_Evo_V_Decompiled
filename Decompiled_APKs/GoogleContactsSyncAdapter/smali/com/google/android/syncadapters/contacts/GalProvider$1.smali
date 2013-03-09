.class Lcom/google/android/syncadapters/contacts/GalProvider$1;
.super Ljava/lang/Object;
.source "GalProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/contacts/GalProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalMaxResults:I

.field final synthetic val$match:I

.field final synthetic val$projection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/contacts/GalProvider;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iput p2, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$match:I

    iput-object p3, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$projection:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$accountName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$filter:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$finalMaxResults:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$match:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    .line 184
    .local v5, isEmail:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$projection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$filter:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/syncadapters/contacts/GalProvider$1;->val$finalMaxResults:I

    #calls: Lcom/google/android/syncadapters/contacts/GalProvider;->handleFilter([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;
    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->access$000(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 183
    .end local v5           #isEmail:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider$1;->call()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
