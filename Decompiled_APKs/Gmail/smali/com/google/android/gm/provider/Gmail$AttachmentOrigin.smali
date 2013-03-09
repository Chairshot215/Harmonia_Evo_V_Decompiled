.class public final enum Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;
.super Ljava/lang/Enum;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

.field public static final enum LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

.field public static final enum SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2702
    new-instance v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    const-string v1, "SERVER_ATTACHMENT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 2704
    new-instance v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    const-string v1, "LOCAL_FILE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 2700
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->$VALUES:[Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2700
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static localFileExtras(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 2723
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serverExtras(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"

    .prologue
    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitServerExtras(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "extras"

    .prologue
    .line 2719
    const-string v0, "_"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;
    .locals 1
    .parameter

    .prologue
    .line 2700
    const-class v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;
    .locals 1

    .prologue
    .line 2700
    sget-object v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->$VALUES:[Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    return-object v0
.end method
