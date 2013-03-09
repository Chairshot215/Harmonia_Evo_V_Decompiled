.class final enum Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
.super Ljava/lang/Enum;
.source "AddressWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZipLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

.field public static final enum POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

.field public static final enum ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    const-string v1, "ZIP"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 110
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    const-string v1, "POSTAL"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->$VALUES:[Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
    .locals 1
    .parameter

    .prologue
    .line 108
    const-class v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->$VALUES:[Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    return-object v0
.end method
