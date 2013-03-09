.class public Lcom/android/htcdialer/customization/CustomizationUtility$Constants;
.super Ljava/lang/Object;
.source "CustomizationUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/customization/CustomizationUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Constants"
.end annotation


# static fields
.field public static final ACTION_CUSTOMIZATION_CHANGE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field public static final ACTION_CUSTOMIZATION_CHANGE_FAKE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE_FAKE"

.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_"

.field private static final MODULE_NAME:Ljava/lang/String; = "Phone"


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/customization/CustomizationUtility;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/customization/CustomizationUtility;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/htcdialer/customization/CustomizationUtility$Constants;->this$0:Lcom/android/htcdialer/customization/CustomizationUtility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
