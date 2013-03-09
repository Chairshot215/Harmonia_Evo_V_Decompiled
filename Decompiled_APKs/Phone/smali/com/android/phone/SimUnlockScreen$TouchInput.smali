.class Lcom/android/phone/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mEight:Landroid/view/View;

.field private mFive:Landroid/view/View;

.field private mFour:Landroid/view/View;

.field private mNine:Landroid/view/View;

.field private mOne:Landroid/view/View;

.field private mSeven:Landroid/view/View;

.field private mSix:Landroid/view/View;

.field private mThree:Landroid/view/View;

.field private mTwo:Landroid/view/View;

.field private mZero:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/SimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/SimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->this$0:Lcom/android/phone/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    const v0, 0x2020189

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    .line 1132
    const v0, 0x2020180

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    .line 1133
    const v0, 0x2020181

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    .line 1134
    const v0, 0x2020182

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    .line 1135
    const v0, 0x2020183

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    .line 1136
    const v0, 0x2020184

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    .line 1137
    const v0, 0x2020185

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    .line 1138
    const v0, 0x2020186

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    .line 1139
    const v0, 0x2020187

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    .line 1140
    const v0, 0x2020188

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    .line 1141
    const v0, 0x202016e

    invoke-virtual {p1, v0}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    .line 1144
    invoke-static {}, Lcom/android/phone/SimUnlockScreen;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SimUnlockScreen;Lcom/android/phone/SimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/android/phone/SimUnlockScreen$TouchInput;-><init>(Lcom/android/phone/SimUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 4
    .parameter "v"

    .prologue
    .line 1192
    const/4 v0, -0x1

    .line 1193
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 1194
    const/4 v0, 0x0

    .line 1214
    :cond_0
    :goto_0
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDigit: onClick digit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return v0

    .line 1195
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 1196
    const/4 v0, 0x1

    goto :goto_0

    .line 1197
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 1198
    const/4 v0, 0x2

    goto :goto_0

    .line 1199
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 1200
    const/4 v0, 0x3

    goto :goto_0

    .line 1201
    :cond_4
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 1202
    const/4 v0, 0x4

    goto :goto_0

    .line 1203
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 1204
    const/4 v0, 0x5

    goto :goto_0

    .line 1205
    :cond_6
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    if-ne p1, v1, :cond_7

    .line 1206
    const/4 v0, 0x6

    goto :goto_0

    .line 1207
    :cond_7
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    if-ne p1, v1, :cond_8

    .line 1208
    const/4 v0, 0x7

    goto :goto_0

    .line 1209
    :cond_8
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    if-ne p1, v1, :cond_9

    .line 1210
    const/16 v0, 0x8

    goto :goto_0

    .line 1211
    :cond_9
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 1212
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 1185
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1187
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen$TouchInput;->this$0:Lcom/android/phone/SimUnlockScreen;

    #calls: Lcom/android/phone/SimUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/phone/SimUnlockScreen;->access$1700(Lcom/android/phone/SimUnlockScreen;I)V

    goto :goto_0
.end method
