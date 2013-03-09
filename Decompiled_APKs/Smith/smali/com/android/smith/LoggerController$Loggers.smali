.class Lcom/android/smith/LoggerController$Loggers;
.super Ljava/lang/Object;
.source "LoggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/LoggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Loggers"
.end annotation


# instance fields
.field public mActionControl:Ljava/lang/String;

.field public mActionResult:Ljava/lang/String;

.field public mButton:Landroid/widget/Button;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mChecked:Z

.field public mClass:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mFileName:Landroid/widget/TextView;

.field public mLayout:Landroid/widget/LinearLayout;

.field public mLoggerLayout:Landroid/widget/LinearLayout;

.field public mName:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field public mPackage:Ljava/lang/String;

.field public mQuerying:Z

.field public mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/smith/LoggerController;


# direct methods
.method public constructor <init>(Lcom/android/smith/LoggerController;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter
    .parameter "pm"
    .parameter "ri"

    .prologue
    const/4 v2, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/smith/LoggerController$Loggers;->this$0:Lcom/android/smith/LoggerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v1, Lcom/android/smith/LoggerController$Loggers$1;

    invoke-direct {v1, p0}, Lcom/android/smith/LoggerController$Loggers$1;-><init>(Lcom/android/smith/LoggerController$Loggers;)V

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 97
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    .line 100
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    .line 101
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    .line 102
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    .line 103
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    .line 107
    iput-object p3, p0, Lcom/android/smith/LoggerController$Loggers;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 108
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mName:Ljava/lang/String;

    .line 109
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mPackage:Ljava/lang/String;

    .line 110
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mClass:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".CONTROLLER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mActionControl:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".CONTROLLER_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mActionResult:Ljava/lang/String;

    .line 113
    return-void

    .line 97
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method


# virtual methods
.method public attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z
    .locals 6
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 146
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 175
    :goto_0
    return v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    .line 152
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    .line 153
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    .line 154
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    .line 155
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    const v3, -0x3f4000

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 162
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    const v4, 0x7f04003e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    const-string v2, "no response"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4140

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 173
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v1

    .line 175
    goto/16 :goto_0
.end method

.method public detachLayout()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 186
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mFileName:Landroid/widget/TextView;

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 196
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mButton:Landroid/widget/Button;

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 202
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    .line 205
    :cond_4
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLoggerLayout:Landroid/widget/LinearLayout;

    .line 208
    :cond_5
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mLayout:Landroid/widget/LinearLayout;

    .line 209
    iput-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mContext:Landroid/content/Context;

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/smith/LoggerController$Loggers;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": querying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/smith/LoggerController$Loggers;->mQuerying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/smith/LoggerController$Loggers;->mChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", checked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/smith/LoggerController$Loggers;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
