.class final enum Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
.super Ljava/lang/Enum;
.source "AddressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UIComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

.field public static final enum EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

.field public static final enum SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    new-instance v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    const-string v1, "SPINNER"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->$VALUES:[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->$VALUES:[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    return-object v0
.end method
