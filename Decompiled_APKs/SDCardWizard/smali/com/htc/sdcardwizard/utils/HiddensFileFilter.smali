.class public Lcom/htc/sdcardwizard/utils/HiddensFileFilter;
.super Ljava/lang/Object;
.source "HiddensFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final HIDDEN_FILE_PREFIX:Ljava/lang/String; = "."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "pathname"

    .prologue
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
