.class Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference$1;
.super Ljava/lang/Object;
.source "TmoRosiePagesPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference$1;->this$0:Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference$1;->this$0:Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;

    #calls: Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->handleClickEvent()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;->access$000(Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;)V

    .line 152
    return-void
.end method
