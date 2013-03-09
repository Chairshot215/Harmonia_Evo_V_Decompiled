.class Ljava/lang/ClassLoader$SystemClassLoader;
.super Ljava/lang/Object;
.source "ClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemClassLoader"
.end annotation


# static fields
.field public static loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #calls: Ljava/lang/ClassLoader;->createSystemClassLoader()Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->access$000()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/lang/ClassLoader$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
