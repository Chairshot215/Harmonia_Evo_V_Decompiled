.class public interface abstract Lcom/android/syncml/providers/SyncML$SyncLogColumns;
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
    name = "SyncLogColumns"
.end annotation


# static fields
.field public static final CLIENT_ADD:Ljava/lang/String; = "ClientAdd"

.field public static final CLIENT_DB_URI:Ljava/lang/String; = "ClientDbUri"

.field public static final CLIENT_DELETE:Ljava/lang/String; = "ClientDelete"

.field public static final CLIENT_UPDATE:Ljava/lang/String; = "ClientUpdate"

.field public static final ERRORCODE:Ljava/lang/String; = "errorCode"

.field public static final LAST_SUCCESS_TIME:Ljava/lang/String; = "LastSuccessTime"

.field public static final LAST_SYNC_TIME:Ljava/lang/String; = "LastSyncTime"

.field public static final PROFILE_ID:Ljava/lang/String; = "ProfileID"

.field public static final SERVER_ADD:Ljava/lang/String; = "ServerAdd"

.field public static final SERVER_DELETE:Ljava/lang/String; = "ServerDelete"

.field public static final SERVER_UPDATE:Ljava/lang/String; = "ServerUpdate"

.field public static final STATUS:Ljava/lang/String; = "Status"
