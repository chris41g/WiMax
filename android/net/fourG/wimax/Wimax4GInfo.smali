.class public Landroid/net/fourG/wimax/Wimax4GInfo;
.super Landroid/net/fourG/net4GInfo;
.source "Wimax4GInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Wimax4GInfo"


# instance fields
.field private m_nFrequency:I

.field private m_nNSPID:I

.field private m_strConnectionTime:Ljava/lang/String;

.field private m_strNAPID:Ljava/lang/String;

.field private m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 188
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GInfo$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GInfo$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/net/fourG/net4GInfo;-><init>()V

    .line 46
    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    .line 47
    const-string v0, "000000"

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    .line 48
    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    .line 49
    const-string v0, "00:00:00"

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    .line 50
    sget-object v0, Landroid/net/fourG/net4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/net4GSupplicantState;

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    .line 51
    return-void
.end method

.method static synthetic access$002(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strBSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    return-object p0
.end method

.method static synthetic access$302(Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    return-object p0
.end method

.method static synthetic access$402(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/Wimax4GInfo;Landroid/net/fourG/net4GSupplicantState;)Landroid/net/fourG/net4GSupplicantState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get4GBaseStationInfoServing()Landroid/net/fourG/net4GBaseStationInfo;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public get4GBaseStationInfoServing()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getConnectionTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFREQ()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    return v0
.end method

.method public getNAPID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    return-object v0
.end method

.method public getNSPID()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    return v0
.end method

.method public getSupplicantState()Landroid/net/fourG/net4GSupplicantState;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    return-object v0
.end method

.method public set4GBaseStationInfo(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 120
    if-nez p1, :cond_3

    .line 124
    :goto_2
    return-void

    .line 122
    :cond_3
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GBaseStationInfo:Landroid/net/fourG/net4GBaseStationInfo;

    .line 123
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    goto :goto_2
.end method

.method public setBSID(Ljava/lang/String;)V
    .registers 9
    .parameter "strBSID"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strBSID:Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_3a

    .line 64
    new-array v0, v6, [C

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v5

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 66
    .local v0, cNAPID:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    .line 70
    .end local v0           #cNAPID:[C
    :goto_39
    return-void

    .line 68
    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    goto :goto_39
.end method

.method public setConnectionTime(Ljava/lang/String;)V
    .registers 2
    .parameter "ConnectionTime"

    .prologue
    .line 85
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFREQ(I)V
    .registers 2
    .parameter "FREQ"

    .prologue
    .line 77
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    .line 78
    return-void
.end method

.method public setNSPID(I)V
    .registers 2
    .parameter "NSPID"

    .prologue
    .line 54
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    .line 55
    return-void
.end method

.method public setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V
    .registers 2
    .parameter "stateName"

    .prologue
    .line 108
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Wimax4GInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 131
    .local v0, none:Ljava/lang/String;
    const-string v2, ", BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strBSID:Ljava/lang/String;

    if-nez v2, :cond_db

    move-object v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CINR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nCinr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", net4GSupplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    if-nez v2, :cond_df

    move-object v2, v0

    :goto_3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nIpAddress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", LINK_STATE_DETAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-nez v2, :cond_e3

    move-object v2, v0

    :goto_62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", LINK_STATE_REASON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    if-nez v2, :cond_e7

    move-object v2, v0

    :goto_71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strMacAddress:Ljava/lang/String;

    if-nez v3, :cond_ea

    .end local v0           #none:Ljava/lang/String;
    :goto_7f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Tx Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nTxPower:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", 4G State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_n4GState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", NSP ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", NAP ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Connection Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 131
    .restart local v0       #none:Ljava/lang/String;
    :cond_db
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strBSID:Ljava/lang/String;

    goto/16 :goto_14

    :cond_df
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    goto/16 :goto_3b

    :cond_e3
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    goto/16 :goto_62

    :cond_e7
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    goto :goto_71

    :cond_ea
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strMacAddress:Ljava/lang/String;

    goto :goto_7f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 160
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nCinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nIpAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_n4GState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strBSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-eqz v0, :cond_61

    .line 173
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    :goto_44
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    if-eqz v0, :cond_6f

    .line 178
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    :goto_51
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/fourG/net4GSupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    return-void

    .line 175
    :cond_61
    const-string v0, "LINK_ST_DETAIL_UNDEFINED"

    invoke-static {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_44

    .line 180
    :cond_6f
    const-string v0, "LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE"

    invoke-static {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_51
.end method
