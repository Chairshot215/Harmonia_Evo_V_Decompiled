.class Lcom/htc/android/mail/FetchTypeSettings2$3;
.super Ljava/lang/Object;
.source "FetchTypeSettings2.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/FetchTypeSettings2;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/FetchTypeSettings2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/FetchTypeSettings2;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    iget v0, v0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    if-ne v0, v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v3

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    iput v2, v0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    .line 160
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    #getter for: Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/android/mail/FetchTypeSettings2;->access$200(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/FetchTypeSettings2;->setupItem(I)V

    .line 162
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    iget-object v1, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    iget v1, v1, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    #getter for: Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/android/mail/FetchTypeSettings2;->access$100(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 164
    invoke-static {}, Lcom/htc/android/mail/FetchTypeSettings2;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FetchTypeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set day>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    #getter for: Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    invoke-static {v2}, Lcom/htc/android/mail/FetchTypeSettings2;->access$100(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/FetchTypeSettings2$3;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    #getter for: Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    invoke-static {v2}, Lcom/htc/android/mail/FetchTypeSettings2;->access$200(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
