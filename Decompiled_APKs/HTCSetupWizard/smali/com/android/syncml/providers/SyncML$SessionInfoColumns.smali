.class public interface abstract Lcom/android/syncml/providers/SyncML$SessionInfoColumns;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionInfoColumns"
.end annotation


# static fields
.field public static final CACHED_MAP:Ljava/lang/String; = "CachedMap"

.field public static final IS_SUSPEND:Ljava/lang/String; = "IsSuspend"

.field public static final IS_SUSPEND_SERVER_SYNC:Ljava/lang/String; = "IsSuspendServerSync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_NONCE:Ljava/lang/String; = "NextNonce"

.field public static final SESSION_ID:Ljava/lang/String; = "SessionId"
