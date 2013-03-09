.class public Lcom/google/android/apps/uploader/clients/picasa/Album;
.super Ljava/lang/Object;
.source "Album.java"


# static fields
.field public static final DROPBOX_ID:Ljava/lang/String; = "0"

.field public static final DROPBOX_ID_ALIAS:Ljava/lang/String; = "default"

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_ALBUM_ID:Ljava/lang/String; = "_id"

.field public static final KEY_ALBUM_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private account:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->account:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->account:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->id:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->title:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->title:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/Album;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
