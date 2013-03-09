.class Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderFilter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderFilter"


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 434
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
