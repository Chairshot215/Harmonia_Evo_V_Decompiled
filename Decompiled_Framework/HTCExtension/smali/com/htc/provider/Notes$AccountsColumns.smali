.class public final Lcom/htc/provider/Notes$AccountsColumns;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountsColumns"
.end annotation


# static fields
.field public static final COLUMN_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field public static final COLUMN_CURRENT_USAGE:Ljava/lang/String; = "current_usage"

.field public static final COLUMN_ISPREMIUM:Ljava/lang/String; = "ispremium"

.field public static final COLUMN_LASTLOGINTIME:Ljava/lang/String; = "last_login_time"

.field public static final COLUMN_MUA:Ljava/lang/String; = "allowance_size"

.field public static final COLUMN_NAME:Ljava/lang/String; = "_name"

.field public static final COLUMN_PASSWORD:Ljava/lang/String; = "_password"

.field public static final COLUMN_PREMIUM_EXPIRED_TIME:Ljava/lang/String; = "premium_expired_time"

.field public static final COLUMN_SHAREID:Ljava/lang/String; = "shareid"

.field public static final COLUMN_TOKEN_EXPIRED_TIME:Ljava/lang/String; = "token_expired_time"

.field public static final COLUMN_UPLOAD_LIMIT_END:Ljava/lang/String; = "upload_limit_end"

.field public static final COLUMN_UPLOAD_LIMIT_NEXT_MONTH:Ljava/lang/String; = "upload_limit_next_month"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
