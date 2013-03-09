.class public final Lcom/htc/providers/uploads/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_UPLOAD_DATA:Ljava/lang/String; = "android.permission.ACCESS_UPLOAD_DATA"

.field public static final ACCESS_UPLOAD_MANAGER:Ljava/lang/String; = "android.permission.ACCESS_UPLOAD_MANAGER"

.field public static final RECEIVER_INTENT:Ljava/lang/String; = "com.htc.providers.uploads.RECEIVER_INTENT"

.field public static final SEND_UPLOAD_COMPLETED_INTENTS:Ljava/lang/String; = "android.permission.SEND_UPLOAD_COMPLETED_INTENTS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
