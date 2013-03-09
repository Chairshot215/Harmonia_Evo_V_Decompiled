.class public final enum Lcom/htc/android/mail/ReadScreen$CursorType;
.super Ljava/lang/Enum;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/ReadScreen$CursorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum AllRELATEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum HTML:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum INTERNAL:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum NOTHTML:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum NOTTEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

.field public static final enum TEXT:Lcom/htc/android/mail/ReadScreen$CursorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2555
    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->HTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "NOTHTML"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTHTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->INTERNAL:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "AllRELATEDATTACHMENT"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "RELATEDFETECHEDATTACHMENT"

    invoke-direct {v0, v1, v7}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "RELATEDUNFETECHEDATTACHMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->TEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    new-instance v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    const-string v1, "NOTTEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen$CursorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTTEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    .line 2554
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/android/mail/ReadScreen$CursorType;

    sget-object v1, Lcom/htc/android/mail/ReadScreen$CursorType;->HTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTHTML:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/mail/ReadScreen$CursorType;->INTERNAL:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/mail/ReadScreen$CursorType;->AllRELATEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/mail/ReadScreen$CursorType;->RELATEDUNFETECHEDATTACHMENT:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/mail/ReadScreen$CursorType;->TEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/mail/ReadScreen$CursorType;->NOTTEXT:Lcom/htc/android/mail/ReadScreen$CursorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->$VALUES:[Lcom/htc/android/mail/ReadScreen$CursorType;

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
    .line 2554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/ReadScreen$CursorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 2554
    const-class v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ReadScreen$CursorType;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/ReadScreen$CursorType;
    .locals 1

    .prologue
    .line 2554
    sget-object v0, Lcom/htc/android/mail/ReadScreen$CursorType;->$VALUES:[Lcom/htc/android/mail/ReadScreen$CursorType;

    invoke-virtual {v0}, [Lcom/htc/android/mail/ReadScreen$CursorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/ReadScreen$CursorType;

    return-object v0
.end method
