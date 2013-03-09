.class Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDirectCursorDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteTraceInfo"
.end annotation


# instance fields
.field final mRemotePid:I

.field final mRemoteTid:I

.field final mRemoteTrace:[Ljava/lang/String;


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    iput p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    return-void
.end method
