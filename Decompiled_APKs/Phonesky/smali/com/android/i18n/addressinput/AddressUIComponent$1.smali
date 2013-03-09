.class synthetic Lcom/android/i18n/addressinput/AddressUIComponent$1;
.super Ljava/lang/Object;
.source "AddressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$i18n$addressinput$AddressField:[I

.field static final synthetic $SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->values()[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    :try_start_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 72
    :goto_1
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    :try_start_2
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 93
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
