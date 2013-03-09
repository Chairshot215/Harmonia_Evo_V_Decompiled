.class public Lcom/redbend/vdmc/InputFile;
.super Ljava/lang/Object;
.source "InputFile.java"

# interfaces
.implements Lcom/redbend/vdm/PLFile;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "InputFile"


# instance fields
.field private _bEncrypt:Z

.field public _stream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/redbend/vdmc/InputFile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/redbend/vdmc/InputFile;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1
    .parameter "name"
    .parameter "context"
    .parameter "bEncrypt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbend/vdmc/InputFile;->_bEncrypt:Z

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/InputFile;->_stream:Ljava/io/FileInputStream;

    .line 25
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 2
    .parameter "commit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-boolean v0, Lcom/redbend/vdmc/InputFile;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Z)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdmc/InputFile;->_stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 48
    return-void
.end method

.method public read([B)I
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lcom/redbend/vdmc/InputFile;->_stream:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 31
    .local v0, nlength:I
    return v0
.end method

.method public write([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to write to an input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
