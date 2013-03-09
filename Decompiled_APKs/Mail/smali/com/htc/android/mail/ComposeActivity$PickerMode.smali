.class final enum Lcom/htc/android/mail/ComposeActivity$PickerMode;
.super Ljava/lang/Enum;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PickerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/ComposeActivity$PickerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/ComposeActivity$PickerMode;

.field public static final enum BCC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

.field public static final enum CC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

.field public static final enum TO:Lcom/htc/android/mail/ComposeActivity$PickerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;

    const-string v1, "TO"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;->TO:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 558
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;

    const-string v1, "CC"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/ComposeActivity$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;->CC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 559
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;

    const-string v1, "BCC"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/ComposeActivity$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;->BCC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    .line 556
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/mail/ComposeActivity$PickerMode;

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->TO:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->CC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/ComposeActivity$PickerMode;->BCC:Lcom/htc/android/mail/ComposeActivity$PickerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;->$VALUES:[Lcom/htc/android/mail/ComposeActivity$PickerMode;

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
    .line 556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/ComposeActivity$PickerMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 556
    const-class v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/ComposeActivity$PickerMode;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/htc/android/mail/ComposeActivity$PickerMode;->$VALUES:[Lcom/htc/android/mail/ComposeActivity$PickerMode;

    invoke-virtual {v0}, [Lcom/htc/android/mail/ComposeActivity$PickerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/ComposeActivity$PickerMode;

    return-object v0
.end method
