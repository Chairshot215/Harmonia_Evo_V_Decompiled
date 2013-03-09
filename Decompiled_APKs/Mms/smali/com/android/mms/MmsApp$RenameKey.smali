.class final enum Lcom/android/mms/MmsApp$RenameKey;
.super Ljava/lang/Enum;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RenameKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/MmsApp$RenameKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/MmsApp$RenameKey;

.field public static final enum signature_text_by_user:Lcom/android/mms/MmsApp$RenameKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/android/mms/MmsApp$RenameKey;

    const-string v1, "signature_text_by_user"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/MmsApp$RenameKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/MmsApp$RenameKey;->signature_text_by_user:Lcom/android/mms/MmsApp$RenameKey;

    .line 282
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/mms/MmsApp$RenameKey;

    sget-object v1, Lcom/android/mms/MmsApp$RenameKey;->signature_text_by_user:Lcom/android/mms/MmsApp$RenameKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/MmsApp$RenameKey;->$VALUES:[Lcom/android/mms/MmsApp$RenameKey;

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
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/MmsApp$RenameKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 282
    const-class v0, Lcom/android/mms/MmsApp$RenameKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/MmsApp$RenameKey;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/MmsApp$RenameKey;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/android/mms/MmsApp$RenameKey;->$VALUES:[Lcom/android/mms/MmsApp$RenameKey;

    invoke-virtual {v0}, [Lcom/android/mms/MmsApp$RenameKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/MmsApp$RenameKey;

    return-object v0
.end method
