.class Ljava/util/prefs/FilePreferencesImpl$1;
.super Ljava/lang/Object;
.source "FilePreferencesImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FilePreferencesImpl;->childrenNamesSpi()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FilePreferencesImpl;


# direct methods
.method constructor <init>(Ljava/util/prefs/FilePreferencesImpl;)V
    .locals 0

    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl$1;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl$1;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    #getter for: Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/prefs/FilePreferencesImpl;->access$000(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
