.class public Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectoryInfo"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field authority:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field exportSupport:I

.field id:J

.field packageName:Ljava/lang/String;

.field photoSupport:I

.field shortcutSupport:I

.field final synthetic this$0:Lcom/android/providers/contacts/ContactDirectoryManager;

.field typeResourceId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactDirectoryManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->this$0:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    .line 67
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    .line 68
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryInfo:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " authority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountName=***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
