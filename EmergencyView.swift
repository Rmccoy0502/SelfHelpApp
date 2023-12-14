import SwiftUI

struct EmergencyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Call 911 if you or someone you know are in immediate danger or go to the nearest emergency room")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            
            Text("The Suicide and Crisis Lifeline Call or text 988, you can also chat https://988lifeline.org/chat/?utm_source=google&utm_medium=web&utm_campaign=onebox")
                .fontWeight(.bold).foregroundColor(Color.red)
            
            Text("Substance Abuse and Mental Health Service Administration (SAMHSA). Their national helpline number is 1-800-662-HELP(4357)")
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
            
            Text("If you need national advocate agencies and professional organizations to contact, find out more helpful information, resources as well as find a therapist, here are some options:").fontWeight(.bold)
                .foregroundColor(Color.red)
            
            Text("Children and Adults with Attention-Deficit/Hyperactivity Disorder(CHADD): https://chadd.org").fontWeight(.bold)
                .foregroundColor(Color.green)
            
            Text("ADDitude Magazine: https://www.additudemag.com").fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Text("Anxiety and Depression Association of America: https://findyourtherapist.adaa.org").fontWeight(.bold)
                .foregroundColor(Color.pink)
            
            Text("Depression and Bipolar Support Alliance: https://www.dbsalliance.org/wellness/treatment-options/").fontWeight(.bold)
                .foregroundColor(Color.green)
            
            Text("Mental Health America: https://www.mhanational.org/finding-therapy").fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Text("National Alliance on Mental Illness: https://www.nami.org/Your-Journey/Individuals-with-Mental-Illness/Finding-a-Mental-Health-Professional")
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
        }
        .padding() 
    }
}



