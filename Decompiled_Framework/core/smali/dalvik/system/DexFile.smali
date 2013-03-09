.class public final Ldalvik/system/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/DexFile$DFEnum;
    }
.end annotation


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mCookie:I

.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldalvik/system/DexFile;->mCookie:I

    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-static {p1, p2, p3}, Ldalvik/system/DexFile;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ldalvik/system/DexFile;->mCookie:I

    iput-object p1, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ldalvik/system/DexFile;)I
    .locals 1

    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    return v0
.end method

.method static synthetic access$100(I)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldalvik/system/DexFile;->getClassNameList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native closeDexFile(I)V
.end method

.method private static native defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Class;
.end method

.method private static native getClassNameList(I)[Ljava/lang/String;
.end method

.method public static native isDexOptNeeded(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static native openDexFile(Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native openDexFile([B)I
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    invoke-static {v0}, Ldalvik/system/DexFile;->closeDexFile(I)V

    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/DexFile;->mCookie:I

    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldalvik/system/DexFile$DFEnum;

    invoke-direct {v0, p0, p0}, Ldalvik/system/DexFile$DFEnum;-><init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldalvik/system/DexFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldalvik/system/DexFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    iget v0, p0, Ldalvik/system/DexFile;->mCookie:I

    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->defineClass(Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
