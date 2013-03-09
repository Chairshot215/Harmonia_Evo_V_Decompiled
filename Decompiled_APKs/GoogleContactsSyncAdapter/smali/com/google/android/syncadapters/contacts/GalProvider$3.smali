.class Lcom/google/android/syncadapters/contacts/GalProvider$3;
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

.field final synthetic val$contactId:J

.field final synthetic val$lookupKey:Ljava/lang/String;

.field final synthetic val$projection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iput-object p2, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$lookupKey:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$contactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->this$0:Lcom/google/android/syncadapters/contacts/GalProvider;

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$projection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$lookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/syncadapters/contacts/GalProvider$3;->val$contactId:J

    #calls: Lcom/google/android/syncadapters/contacts/GalProvider;->handleContact([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/contacts/GalProvider;->access$100(Lcom/google/android/syncadapters/contacts/GalProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/GalProvider$3;->call()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
