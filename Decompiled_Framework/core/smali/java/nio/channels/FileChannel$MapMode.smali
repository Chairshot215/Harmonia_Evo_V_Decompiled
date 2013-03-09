.class public Ljava/nio/channels/FileChannel$MapMode;
.super Ljava/lang/Object;
.source "FileChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/FileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapMode"
.end annotation


# static fields
.field public static final PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

.field public static final READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    new-instance v0, Ljava/nio/channels/FileChannel$MapMode;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1}, Ljava/nio/channels/FileChannel$MapMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/channels/FileChannel$MapMode;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/FileChannel$MapMode;->displayName:Ljava/lang/String;

    return-object v0
.end method
