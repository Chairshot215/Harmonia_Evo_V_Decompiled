.class Lcom/android/phone/CellBroadcastSettings$2;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CellBroadcastSettings;->updateChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$2;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v3, 0x0

    .line 193
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, newValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CellBroadcastSettings$2;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v4}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, Str:[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, mLang:I
    iget-object v4, p0, Lcom/android/phone/CellBroadcastSettings$2;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #getter for: Lcom/android/phone/CellBroadcastSettings;->prefSet:Lcom/htc/preference/HtcPreference;
    invoke-static {v4}, Lcom/android/phone/CellBroadcastSettings;->access$100(Lcom/android/phone/CellBroadcastSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    aget-object v5, v0, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v3, 0x1

    goto :goto_0
.end method
