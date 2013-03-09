.class public final Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
.super Ljava/lang/Object;
.source "MmsAsyncWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MmsAsyncWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkerArgs"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public handler:Landroid/os/Handler;

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public result:Ljava/lang/Object;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
