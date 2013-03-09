.class public final Lcom/htc/provider/HtcContactsContract$Picker;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Picker"
.end annotation


# static fields
.field public static final ACCOUNT_MODE:Ljava/lang/String; = "filter_account_mode"

.field public static final ACCOUNT_MODE_ALL:I = 0x0

.field public static final ACCOUNT_MODE_EXCLUDE_READ_ONLY:I = 0x3

.field public static final ACCOUNT_MODE_EXCLUDE_SIM:I = 0x2

.field public static final ACCOUNT_MODE_EXCLUDE_SIM_AND_READ_ONLY:I = 0x4

.field public static final ACCOUNT_MODE_SIM:I = 0x1

.field public static final ACTION_CONTACTS_ATTRIBUTE_COMMON_PICKER:Ljava/lang/String; = "com.android.htccontacts.common_attribute_picker"

.field public static final ACTION_CONTACTS_COMMON_PICKER:Ljava/lang/String; = "com.android.htccontacts.common_picker"

.field public static final EXCLUDE_SIM_CONTACT:Ljava/lang/String; = null

.field public static final EXTRA_PICKER_REQUST_MUTIPLE_SELECTION:Ljava/lang/String; = "EXTRA_PICKER_REQUST_MUTIPLE_SELECTION"

.field public static final EXTRA_PICKER_WITH_ATTRIBUTES:Ljava/lang/String; = "EXTRA_PICK_WITH_MIMETYPE"

.field public static final EXTRA_PICK_WITH_TYPES:Ljava/lang/String; = "EXTRA_PICK_WITH_TYPES"

.field public static final EXTRA_RESULT_COMPANY_COLLEAGE_ADDRESS:Ljava/lang/String; = "colleage_address"

.field public static final EXTRA_RESULT_COMPANY_RESULT_COLLEAGE_NAME:Ljava/lang/String; = "colleage_name"

.field public static final EXTRA_RESULT_SELECTED_CONTACT_ID:Ljava/lang/String; = "SELECTED_ID"

.field public static final EXTRA_RESULT_SELECTED_DATA_ID:Ljava/lang/String; = "SELECTED_DATA_ID"

.field public static final EXTRA_RESULT_SELECTED_GROUP_TITLE:Ljava/lang/String; = "SELECTED_GROUP_TITLE"

.field public static final EXTRA_WITH_GROUPS:Ljava/lang/String; = "EXTRA_PICK_WITH_GROUPS"

.field public static final PARAM_ACCOUNT_TYPES:Ljava/lang/String; = "PARAM_ACCOUNT_TYPES"

.field public static final PARAM_ATTRIBUTES:Ljava/lang/String; = "PARAM_ATTRIBUTES"

.field public static final PARAM_IN_GROUPS:Ljava/lang/String; = "PARAM_IN_GROUPS"

.field public static final PARAM_WITH_GROUPS:Ljava/lang/String; = "PARAM_WITH_GROUPS"

.field public static final PICK_SIM_CONTACT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( ext_account_Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( ext_account_Type <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.anddroid.contacts.sim"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
